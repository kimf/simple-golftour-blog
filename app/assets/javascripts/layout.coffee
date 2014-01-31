#= require jquery
#= require_self

$(document).ready ->

  $(".screencast img").on "click", (e) ->
    e.preventDefault();
    $(".screencast video").addClass "playing"
    $(".screencast video")[0].play()

  $(".screencast video").on "ended", (e) ->
    $el = $(e.currentTarget)
    $el.removeClass "playing"
