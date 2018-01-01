// Add song
function submitSong(event) {
  clearTexts();
  event.preventDefault();
  var year = $("#song_year").val();
  var title = $("#song_title").val();
  var artistId = $("#song_artist_id").val();

  addSong(year, title, artistId);

  $("#song_year").val(null);
  $("#song_title").val(null);
}

function addSong(year, title, artistId) {
  var newSong = { year, title, artist_id: artistId };

  $.ajax({
    type: "POST",
    url: "/songs.json",
    data: JSON.stringify({
      song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    console.log(data);

    var songId = data.id;

    var span = $('<span class="glyphicon glyphicon-remove"></span>')
      .click(deleteOneSong);

    var button = $('<button class="btn btn-xs btn-grey pull-right delete-song"></button>')
      .append(span);

    var buttonDiv = $('<div class="col-xs-1">').append(button);

    var titleDiv = $('<div class="col-xs-10"></div>')
      .html(title);

    var yearDiv = $('<div class="col-xs-1"></div')
      .html(year);

    var row = $('<div class="row"></div)')
      .append(yearDiv).append(titleDiv).append(buttonDiv);

    var listItem = $('<li class="list-group-item"></li>')
      .attr('id', "song-" + songId)
      .append(row);

    $("#song-list").append(listItem);

    $('#notice-text').text("Song added");
  })
  .fail(function(data) {
    $('#alert-text').text(data.responseText);
  });
}

// Remove song
function deleteOneSong(event) {
  clearTexts();
  if(confirm("Are you sure?")) {
    var songId = $(this).closest("li").attr("id").match(/\d+/)[0];
    deleteSong(songId);
  }
}

function deleteAllSongs(event) {
  clearTexts();
  event.preventDefault();

  if(confirm("Are you sure?")) {
    $('#song-list li').each(function(i) {
      var songId = $(this).closest("li").attr("id").match(/\d+/)[0];
      deleteSong(songId);
    })
  }
}

function deleteSong(songId) {
  $.ajax({
    type: "DELETE",
    url: "/songs/" + songId + ".json",
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    $('#song-'+songId).remove();
    $('#notice-text').text("Song deleted")
  })
  .fail(function(data) {
    console.log("fail");
    $('#alert-text').text("Song could not be deleted");
  });
}

function clearTexts() {
  $('#notice-text').text("")
  $('#alert-text').text("");
}
// Call functions
$(document).ready(function() {
  $("#new_song").bind('submit', submitSong);
  $(".delete-song").click(deleteOneSong);
  $("#delete-all-songs").click(deleteAllSongs);
});
