*Settings*
Documentation     Test suite to create characters in Marvel API
Library           RequestsLibrary
Library           ${EXECDIR}/factories/Character.py

*Test Cases*
Should create a character
    Set Headers     l4ur4.88@gmail.com

    &{character}    Factory Character

    ${response}     POST
    ...             http://marvel.qaninja.academy/characters
    ...             json=${character}
    ...             headers=${HEADERS}
    
    Status Should Be      200     ${response}

*Keywords*
Set Headers
    [Arguments]     ${email}

    &{user}         Create Dictionary     email=${email}

    ${response}     POST
    ...             http://marvel.qaninja.academy/accounts
    ...             json=${user}

    ${client_key}   Set Variable          ${response.json()}[client_key]

    &{HEADERS}      Create Dictionary     client_key=${client_key}

    Set Suite Variable    ${HEADERS}
