*Settings*
Documentation       Test suite to remove character by id in Marvel API

Resource            ${EXECDIR}/resources/Base.robot
Library             ${EXECDIR}/resources/factories/Character.py

Suite Setup         Super Setup         l4ur4oliveira@bol.com

*Test Cases*
Should remove character by id
    &{character}            Factory Wolverine
    ${wolverine}            POST New Character      ${character}
    ${character_id}         Set Variable            ${wolverine.json()}[_id]

    ${response}             DELETE Character By Id     ${character_id}
    Status Should Be        204     ${response}

    ${response2}            GET Character By Id         ${character_id}
    Status Should Be        404     ${response2}

Should not remove character if id doesn't exist
    ${character_id}         Get Unique Id

    ${response}             DELETE Character By Id     ${character_id}

    Status Should Be        404         ${response}
