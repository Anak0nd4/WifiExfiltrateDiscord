# WifiExfiltrateDiscord
<img src="https://raw.githubusercontent.com/Anak0nd4/WifiExfiltrateDiscord/main/WF.png" width="250" height="250"></img>
## Description 
This is a simple powershell script to exfiltrate wifi passwords using discord. There is also a Rubber Ducky script you can use to automate the process with a rubber ducky.
You don't need admin privileges to run this script.
## Important
You can change the value of {LANG VALUE} depending of the language used in the target.
- French : "Contenu de la clé"
- English : "Key Content"

## Encoding powershell Command

For the rubber ducky script, you can encode the coommand using the following encoding syntax :
```
[Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes("'{COMMAND}'"))
```
Then you can use the command like the following :
```
powershell.exe -ep bypass -encodedCommand {ENCODING_RESULT}
```
## Contact 
[![Twitter URL](https://img.shields.io/badge/Twitter-blue?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/kondah_ha)


