"use strict";
$(document).ready(function () {
    
    $("#gamename1").autocomplete({
        source: function (request, response) {
            $.ajax({
                url: "https://igdbcom-internet-game-database-v1.p.mashape.com/games/?fields=name&limit=10&offset=0&order=release_dates.date%3Adesc&search=" + $("#gamename1").val(), // The URL to the API. You can get this in the API page of the API you intend to consume
                type: 'GET', // The HTTP Method, can be GET POST PUT DELETE etc
                data: {}, // Additional parameters here
                dataType: 'json',
                success: function (data) {
                    var arr = [];
                    for (var i = 0; i < data.length; i++) {
                        arr.push(data[i]["name"]);
                    }
                    response(arr);
                },
                error: function (err) { alert(err); },
                beforeSend: function (xhr) {
                    xhr.setRequestHeader("X-Mashape-Authorization", "Nx7kheuOfnmshrtNvAGm7jhvt2Fpp1oqG9Sjsn2pJceQqWadcG"); // Enter here your Mashape key
                }
            });
        },
        minLength: 2,
        select: function (event, ui) {
            $("#gamename1").text(ui);
        }
    });
});