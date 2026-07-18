#Note : im not sure who is the owner of this script i just find it accidenly by google search engine 
#so i decide to test it and find it work ;
#try it with responsibility
#!/bin/bash
echo "Resetting Navicat Premium Trial..."
dconf reset -f /com/premiumsoft/navicat-premium/
if [ -f ~/.config/navicat/Premium/preferences.json ]; then
    sed -i -E 's/,?"([ A-F0-9]+)":\{([^\}]+)},?//g' ~/.config/navicat/Premium/preferences.json
fi
echo "Done. Restart Navicat."
