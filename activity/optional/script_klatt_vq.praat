# get your input
form Voice quality synthesis
    comment Here, tune the parameters of voice quality at your choice:
    comment
    real breathiness_amp 40
    real open_phase 0.5
    real spectral_tilt 10
    real flutter 0
    real double_pulsing 0
endform


beg = Get start time
end = Get end time
mid = ('beg' + 'end') / 2
dur = Get total duration

wavName$ = selected$ ("Sound")

select Sound 'wavName$'
To KlattGrid (simple): 0.005, 5, 5500, 0.025, 50, 60, 600, 100, "yes"

select KlattGrid 'wavName$'

Add breathiness amplitude point... mid breathiness_amp
Add open phase point... mid open_phase
Add spectral tilt point... mid spectral_tilt
Add flutter point... mid flutter
Add double pulsing point... mid double_pulsing

To Sound
Scale intensity... 75

Rename... 'wavName$'_vq
Play

print done!