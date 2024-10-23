*** Variables ***
${URL}                  https://www.toolsqa.com/automation-practice-form/
${Browser}              Chrome
${Delay}                15s


# Dataset for single iteration

# ${fname}                Appan
# ${lname}                Roy
# ${sex}                  Male
# ${YOE}                  5
# ${Prof}                 Both
# ${Tool}                 Webdriver
# ${Continent}            Europe
# ${cmd}                  WebElement


# Dataset for multiple iteration

@{fname}       Leesha       Nikita     Raima           Mandira         Divyangana      Sweta        Raunak
@{lname}       Saha         Ghosh      Bhattacharyya   Ghosh           Sarkar          Modi         Agarwal
@{sex}         Female       Female     Female          Female          Female          Female       Male
@{YOE}         2            1          3               7               6               4            5
@{Prof}        Both         Manual     Automation      Automation      Both            Manual       Both
@{Tool}        RC & IDE     RC         RC & Webdriver  All             Webdriver       IDE          IDE & Webdriver
@{Continent}   Asia         Australia  South America   North America   Europe          Antartica    Africa
@{cmd}         Switch       Wait       Navigation      Browser         WebElement      Wait         Browser
