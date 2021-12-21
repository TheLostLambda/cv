#!/usr/bin/fish

set THEMES 'light, blue' 'dark, green' 'dark' 'BW'

cd build/

for theme in $THEMES
    sed "s/##THEME##/$theme/g" ../CV.tex | lualatex -jobname="CV ($theme)"
end

cp *.pdf ..
