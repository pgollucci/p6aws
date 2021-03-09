######################################################################
#<
#
# Function: p6_aws_svc_secretsmanager_list()
#
#>
######################################################################
p6_aws_svc_secretsmanager_list() {

    p6_aws_cmd secretsmanager \
	       list-secrets \
	       --output text \
	       --query "'SecretList[].[Name, ARN, LastChangedDate, LastAccessedDate]'"

}