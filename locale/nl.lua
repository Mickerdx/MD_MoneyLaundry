local Translations = {
     error = {
          already_started = 'Deze wasmachine is al gestart.',
          already_washing = 'Deze wasmachine is al geld aan het wassen.',
          no_clean_money = 'Er is geen schoon geld om te pakken.',
     },
     success = {

     },
     info = {
          money_timer = 'De wasmachine zal over 10 minuten klaar zijn.',
     },
     mail = {

     },
     menu = {
          back = 'Terug',
          leave = 'Sluiten',
     }
}

Lang = Locale:new({
     phrases = Translations,
     warnOnMissing = true
})