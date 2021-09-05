*Settings*
Documentation       Test suite to create characters in Marvel API
Resource            ${EXECDIR}/resources/Base.robot
Library             ${EXECDIR}/resources/factories/Character.py

*Test Cases*
Should create a character
    Set Client Key     l4ur4.88@gmail.com

    &{character}    Factory Character
    ${response}     POST New Character      ${character}

    Status Should Be        200     ${response}

Should not create a character with an existing name
    ${character}            Factory Character
    POST New Character      ${character}

    ${response}             POST New Character      ${character}
    
    Status Should Be        409                             ${response}
    Should Be Equal         ${response.json()}[error]       Character already exists :(
