*** Settings ***
Documentation   Using the vault functionaloty locally and in Control Room
Library         RPA.Robocloud.Secrets
Library         Collections
Variables       variables.py

*** Variables ***
${RPA_SECRET_NAME}    %{RPA_SECRET_NAME}

*** Tasks ***
Get and log the value of the vault secrets using Get Secret keyword
    #In real robots, you shoud not print secrets to the log, this is just for demostration purposes.
    ${secret}=    Get secret    ${RPA_SECRET_NAME}
    #Note: Log to obtain credentials from vault.json
    Log    ${secret}[username]
    Log    ${secret}[password]
    #Note: Log to obtain credentials from variables.py
    Log    ${USER_NAME}
    Log    ${PASSWORD}