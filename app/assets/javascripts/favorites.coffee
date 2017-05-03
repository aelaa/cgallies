@favoriteItemWidth = () =>
  return $('.favorite-works>.item').first().width()

@favoriteScrollRight = () =>
  to_scroll = $('.favorite-works').scrollLeft() + favoriteItemWidth() * 4
  shift = favoriteItemWidth() * Math.round(to_scroll / favoriteItemWidth())
  $('.favorite-works').stop().animate({ scrollLeft: shift }, "slow")
  $('.favorite-works>.left').css('left', '+=50vw')
  $('.favorite-works>.right').css('right', '-=50vw')

@favoriteScrollLeft = () =>
  to_scroll = $('.favorite-works').scrollLeft() - favoriteItemWidth() * 4
  shift = favoriteItemWidth() * Math.round(to_scroll / favoriteItemWidth())
  if (shift >= 0)
    $('.favorite-works').stop().animate({ scrollLeft: shift }, "slow")
  $('.favorite-works>.left').css('left', '-=50vw')
  $('.favorite-works>.right').css('right', '+=50vw')

$(document).ready(() =>
  $(window).resize(() =>
    $('.favorite-works>.item')
      .last()
      .bind("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd", (e) =>
        init = $('.favorite-works').scrollLeft()
        number = Math.round(init / favoriteItemWidth())
        $('.favorite-works').animate({ scrollLeft: number * favoriteItemWidth() }, "fast")
        $('.favorite-works>.item').last().unbind("transitionend webkitTransitionEnd oTransitionEnd MSTransitionEnd")
      )
  )
)

