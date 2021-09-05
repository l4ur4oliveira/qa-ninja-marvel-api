*Settings*
Documentation     Test suite to create characters in Marvel API
Resource          ${EXECDIR}/resources/Base.robot
Library           ${EXECDIR}/resources/factories/Character.py

*Test Cases*
Should create a character
    Set Client Key     l4ur4.88@gmail.com

    &{character}    Factory Character

    ${response}     POST
    ...             ${BASE_URL}/characters
    ...             json=${character}
    ...             headers=${HEADERS}

    Status Should Be      200     ${response}
