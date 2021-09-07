*Settings*
Documentation       Test suite to search character by id in Marvel API

Resource            ${EXECDIR}/resources/Base.robot
Library             ${EXECDIR}/resources/factories/Character.py

Suite Setup         Super Setup         l4ur4oliveira@hotmail.com

*Test Cases*
Should find character by id
    &{character}            Factory Black Widow
    ${black_widow}          POST New Character      ${character}
    ${character_id}         Set Variable            ${black_widow.json()}[_id]

    ${response}            GET Character By Id     ${character_id}

    Status Should Be        200     ${response}

    Should Be Equal         ${black_widow.json()}[name]         ${character}[name]
    Should Be Equal         ${black_widow.json()}[aliases]      ${character}[aliases]
    Should Be Equal         ${black_widow.json()}[age]          ${character}[age]
    Should Be Equal         ${black_widow.json()}[team]         ${character}[team]
    Should Be Equal         ${black_widow.json()}[active]       ${character}[active]

Should not find character if id doesn't exist
    ${character_id}         Get Unique Id

    ${response}             GET Character By Id     ${character_id}

    Status Should Be        404         ${response}
