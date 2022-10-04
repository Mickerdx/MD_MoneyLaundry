local Translations = {
     error = {
          already_started = 'This laundromat has already been started.',
          already_washing = 'This laundromat is already washing money.',
          no_clean_money = 'There is no clean money to grab.',
     },
     success = {

     },
     info = {
          money_timer = 'The laundromat will be done in 10 minutes.',
     },
     mail = {

     },
     menu = {
          back = 'Back',
          leave = 'Leave',
     }
}

Lang = Locale:new({
     phrases = Translations,
     warnOnMissing = true
})