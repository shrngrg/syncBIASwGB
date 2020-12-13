#################################################
# syncBIASwithGB
# Author: Sharon G.
#################################################

echo -n "Are you sure you want to sync Positive Grid BIAS with Garageband? (Y/n)"
read response

if [ "$response" == "Y" ]
then
  #Backup Previous BIAS Presets in Documents
  cp -r /Users/User/Documents/PositiveGrid/BIAS_FX2/ /Users/User/Documents/Presets_Backup/BIAS_Presets_Backup/

  cp -r /Users/User/Library/Containers/com.apple.garageband10/Data/Documents/PositiveGrid/BIAS_FX2/ /Users/User/Documents/Presets_Backup/Garageband_Presets_Backup/

  #Delete contents of BIAS folder in Garageband Sandbox
  rm -r /Users/User/Library/Containers/com.apple.garageband10/Data/Documents/PositiveGrid/BIAS_FX2/*

  #Copy BIAS presets to Garageband Sandbox
  cp -r /Users/User/Documents/PositiveGrid/BIAS_FX2/ /Users/User/Library/Containers/com.apple.garageband10/Data/Documents/PositiveGrid/BIAS_FX2/
  echo "SYNC COMPLETE!"

elif [ "$response" == "n" ]
then
  echo "NOT SYNCED!"
fi
exit 1
