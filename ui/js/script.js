$(document).ready(function () {
  window.addEventListener("message", function (event) {
    if (event.data.action == true) {
      fuel = event.data.fuel;
      dataGas = event.data.data;

      $(".fuel-detail-price").empty();
      $(".fuel-detail-price").html("$" + dataGas.price.toFixed(2));
      $(".fuel-car-fuel-stock-litre").empty();
      $(".fuel-car-fuel-stock-litre").html(
        Math.round(dataGas.stock) + " Litre"
      );
      $(".fuel-car-fuel-stock-value").css(
        "width",
        Math.round(dataGas.stock) + "%"
      );

      $("body").css("display", "flex");
      $(".fuel-wrapper").removeClass("slideToDownReverse");
      $(".fuel-wrapper").addClass("slideToDown");
      $(".fuel-modal").css("display", "none");
      $(".fuel-car-fuel-litre").html(Math.round(fuel) + "%");
      $(".fuel-car-fuel-value").css("width", Math.round(fuel) + "%");
      $("#fuel-price-input").val("");

      $(document).keyup(function (e) {
        if (!counting) {
          if (e.key === "Escape") {
            myStop();
            $("#fuel-price-input").val("");
            counting;
            inv;
            price;
            perc_new;
            totalPercent;
            guardar;
            completar;
            maxFuel;
            $.post("http://esx_fuel/escape", JSON.stringify({}));
          }
        }
      });
    } else {
      $(".fuel-wrapper").removeClass("slideToDown");
      $(".fuel-wrapper").addClass("slideToDownReverse");
      $("body").fadeOut(300);
    }
  });

  var counting;
  var completar;
  var guardar;
  var price;
  var inv;
  var totalPercent;
  var perc_new;
  var maxFuel;

  function myStart() {
    if (inv == undefined) {
      inv = setInterval(increase, 1000);
    }
  }

  function myStop() {
    if (inv !== undefined) {
      clearInterval(inv);
      inv = undefined;
    }
  }

  function increase() {
    if (counting) {
      if (fuel < maxFuel) {
        Math.round(fuel++);
        Math.round(dataGas.stock--);
        totalPercent = Math.round(fuel) + "%";
        $(".fuel-car-fuel-litre").html(totalPercent);
        $(".fuel-car-fuel-value").css("width", Math.round(fuel) + "%");
        $(".fuel-car-fuel-stock-litre").html(
          Math.round(dataGas.stock) + " Litre"
        );
        $(".fuel-car-fuel-stock-value").css(
          "width",
          Math.round(dataGas.stock) + "%"
        );
      } else {
        $.post("http://esx_fuel/removeanim", JSON.stringify({}));
        if (completar) {
          $.post(
            "http://esx_fuel/pay",
            JSON.stringify({
              new_perc: perc_new * dataGas.price,
            })
          );
          perc_new;
          completar = !completar;
        } else if (guardar) {
          $.post(
            "http://esx_fuel/pay",
            JSON.stringify({
              new_perc: price,
            })
          );
          price;
          guardar = !guardar;
        }
        counting = !counting;
        inv;
        totalPercent;
        maxFuel;
        myStop();
        $.post("http://esx_fuel/escape", JSON.stringify({}));
      }
    }
  }

  $("#fuel-full").click(function () {
    if (!counting) {
      perc_new = 100 - Math.round(fuel);
      $.post(
        "http://esx_fuel/checkpay",
        JSON.stringify({
          new_perc: perc_new,
        })
      );
      counting = !counting;
      completar = !completar;
      maxFuel = 99;
      $(".fuel-modal-text").text(
        "Depoyu $" +
          (perc_new * dataGas.price).toFixed(2) +
          " karşılığında doldurmak istiyor musunuz?"
      );
      $(".fuel-modal").fadeIn(300);
      $(".fuel-modal").removeClass("slideToLeft");
      $(".fuel-modal").addClass("slideToRight");
      $(".fuel-container").fadeOut(300);
    }
  });

  $("#fuel-price").click(function () {
    if (!counting) {
      price = Math.round($("#fuel-price-input").val());
      if (price > dataGas.price) {
        if (price <= (100 - Math.round(fuel)) * dataGas.price) {
          $.post(
            "http://esx_fuel/checkpay",
            JSON.stringify({
              new_perc: price,
            })
          );
          counting = !counting;
          guardar = !guardar;
          maxFuel = Math.floor(price / dataGas.price) + Math.round(fuel) - 1;
          $(".fuel-modal-text").text(
            "Depoyu $" +
              price.toFixed(2) +
              " karşılığında doldurmak istiyor musunuz?"
          );
          $(".fuel-modal").fadeIn(300);
          $(".fuel-container").fadeOut(300);
        } else {
          var texto =
            "Depo en fazla <b>$" +
            (100 - Math.round(fuel)) * dataGas.price +
            " </b>karşılığında doldurulabilir!";
          $.post(
            "http://esx_fuel/notifytext",
            JSON.stringify({
              text: texto,
            })
          );
        }
      } else {
        var texto = "Ücret, en az $" + dataGas.price + " olmalıdır!";
        $.post(
          "http://esx_fuel/notifytext",
          JSON.stringify({
            text: texto,
          })
        );
      }
    }
  });

  $("#fuel-plus").click(function () {
    if (!counting) {
      if (Math.round($("#fuel-price-input").val()) < 100) {
        $("#fuel-price-input").val(
          Math.round($("#fuel-price-input").val()) + 1
        );
        price = $("#fuel-price-input").val();
      }
    }
  });

  $("#fuel-minus").click(function () {
    if (!counting) {
      if (Math.round($("#fuel-price-input").val()) > 0) {
        $("#fuel-price-input").val(
          Math.round($("#fuel-price-input").val()) - 1
        );
        price = $("#fuel-price-input").val();
      }
    }
  });

  $("#fuel-accept").click(function () {
    if (counting) {
      $(".fuel-modal").fadeOut(300);
      $(".fuel-container").fadeIn(300);
      $("left").fadeIn(300);
      $(".act").fadeIn(300);
      $.post("http://esx_fuel/startanim", JSON.stringify({}));
      myStop();
      myStart();
    }
  });

  $("#fuel-decline").click(function () {
    $(".fuel-modal").fadeOut(300);
    $(".fuel-container").fadeIn(300);
    if (completar) {
      counting = !counting;
      completar = !completar;
    } else if (guardar) {
      counting = !counting;
      guardar = !guardar;
    }
  });
});
