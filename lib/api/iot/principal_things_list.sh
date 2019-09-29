######################################################################
#<
#
# Function:
#      = p6_aws_iot_principal_things_list(principal)
#
# Arg(s):
#    principal - 
#
#
#>
######################################################################
p6_aws_iot_principal_things_list() {
    local principal="$1"
    shift 1

    p6_run_read_cmd aws iot list-principal-things --principal $principal "$@"
}