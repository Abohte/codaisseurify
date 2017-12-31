// Add song
function submitSong(event) {
  event.preventDefault();
  var year = $("#song_year").val();
  var title = $("#song_title").val();
  var artistId = $("#song_artist_id").val();

  addSong(year, title, artistId);

  $("#song_year").val(null);
  $("#song_title").val(null);
}

function addSong(year, title, artistId) {
  console.log(year, title, artistId);

  var newSong = { year: year, title: title, artist_id: artistId };

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


  });
}



// Remove song
function deleteSong(event) {
  if(confirm("Are you sure?")) {
    console.log("delete");
    var songId = $(this).closest("li").attr("id").match(/\d+/)[0];
    console.log(songId);
  }
}



// Call functions
$(document).ready(function() {
  $("#new_song").bind('submit', submitSong);
  $(".delete-song").click(deleteSong);
});
