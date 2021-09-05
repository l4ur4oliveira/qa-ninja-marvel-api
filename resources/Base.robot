*Settings*
Documentation       Everything starts here
Resource            routes/Characters.robot
Library             RequestsLibrary

*Variables*
${BASE_URL}       http://marvel.qaninja.academy

*Keywords*
Set Client Key
    [Arguments]     ${email}

    &{user}         Create Dictionary     email=${email}

    ${response}     POST
    ...             ${BASE_URL}/accounts
    ...             json=${user}

    ${client_key}   Set Variable          ${response.json()}[client_key]

    &{HEADERS}      Create Dictionary     client_key=${client_key}

    Set Suite Variable    ${HEADERS}
