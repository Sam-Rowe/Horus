# Setup and pre requisites

## Secrets 
SCORES_DB_PASSWORD
AZURE_CREDENTIALS - This needs to be created by [following the instructions here](https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-github-actions#configure-deployment-credentials) 


````
	az ad sp create-for-rbac --name horustest --role Contributor --scopes /subscriptions/{SubID} --sdk-auth
````