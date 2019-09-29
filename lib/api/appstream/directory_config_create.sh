######################################################################
#<
#
# Function:
#      = p6_aws_appstream_directory_config_create(directory_name, organizational_unit_distinguished_names, service_account_credentials)
#
# Arg(s):
#    directory_name - 
#    organizational_unit_distinguished_names - 
#    service_account_credentials - 
#
#
#>
######################################################################
p6_aws_appstream_directory_config_create() {
    local directory_name="$1"
    local organizational_unit_distinguished_names="$2"
    local service_account_credentials="$3"
    shift 3

    p6_run_write_cmd aws appstream create-directory-config --directory-name $directory_name --organizational-unit-distinguished-names $organizational_unit_distinguished_names --service-account-credentials $service_account_credentials "$@"
}