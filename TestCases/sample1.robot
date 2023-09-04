*** Settings ***
Library    SeleniumLibrary
#Library    ExcelLibrary
Library    DataDriver   ./Testdata/testdata.xlsx

*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
TC1
      [Tags]    sanity
      [Documentation]    launching browser this is an dummy repo
    open browser    https://testautomationpractice.blogspot.com/        chrome
    maximize browser window
    log to console   chromebrowser launched and navigated successfully
TC2
     [Tags]    sanity
    [Documentation]    Working on web elements
    input text    //input[@id='name']       veenu
    capture element screenshot    //input[@id='name']     C:/Users/Praveen/PycharmProjects/pythonProject6/screenshots/name.png
    clear element text    //input[@id='name']
     input text    //input[@id='name']       veenu
     input text    //input[@id='email']      veenu@gmail.com
     select radio button    gender      male
     select checkbox   id:sunday
     select checkbox   id:wednesday
     scroll element into view    //label[contains(text(),'Country:')]
     select from list by label    //select[@id='country']       India

    set selenium implicit wait    1second
    ${getseltimout}=    get selenium implicit wait
    log to console    default Selenium timeout :${getseltimout}
    set selenium timeout    3seconds
    ${getseltimout}=    get selenium timeout
     ${getselspeed}=    get selenium speed
  log to console    New Selenium timeout :    ${getseltimout}
  log to console    current selenium speed :    ${getselspeed}
    #**********************************************************************************
   # [Documentation]    Working on webtables
TC3
     [Documentation]    getting list count and names
     [Tags]    regression
     ${linkscount}=     get element count    xpath://a
     convert to integer    ${linkscount}
     log to console    total links on page :${linkscount}
     @{allpagelinks}    create list
    #@{allpagelinks}    get all links
     FOR    ${i}    IN RANGE    1     ${linkscount}+1
          ${linkscount}     get text    xpath:(//a)[${i}]
                      log to console   ${linkscount}
      END
TC4
    [Documentation]    getting textbox count and names
    [Tags]    unit
    ${textscount}=     get element count    xpath://input[@type="text"]

     log to console    total textboxes on page :${textscount}

     FOR    ${i}    IN RANGE    1     ${textscount}
          ${textnames}     get text    xpath:(//input)[${i}]
                      log to console   ${textnames}
      END
    capture page screenshot    C:/Users/Praveen/PycharmProjects/pythonProject6/screenshots/ssht1.png


