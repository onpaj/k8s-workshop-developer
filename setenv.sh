export RESOURCE_GROUP=RGRND
export LOCATION="westeurope"
export ACR_NAME=opajgrtacrworkshop
export AKS_CLUSTER_NAME=opajgrtaksworkshop


export ACR_URL=$(az acr show --name $ACR_NAME --resource-group $RESOURCE_GROUP --query "loginServer" --output tsv)
export ACR_KEY=$(az acr credential show --name $ACR_NAME --resource-group $RESOURCE_GROUP --query "passwords[0].value" --output tsv)


export COSMOSNAME="opajgrtcosmos"
export COSMOSKEY="$(az cosmosdb list-keys --name ${COSMOSNAME} --resource-group ${RESOURCE_GROUP} --query "primaryMasterKey" -o tsv)"
export COSMOSURI="$(az cosmosdb show --name ${COSMOSNAME} --resource-group ${RESOURCE_GROUP} --query "documentEndpoint" -o tsv)"

export WEBAPPNAME="opajgrtk8sappservice"