######################################################################
#<
#
# Function:
#	p6_aws_ds_microsoft_ad_create(name, password, vpc_settings)
#
#  Args:
#	name - 
#	password - 
#	vpc_settings - 
#
#>
######################################################################
p6_aws_ds_microsoft_ad_create() {
    local name="$1"
    local password="$2"
    local vpc_settings="$3"
    shift 3

    p6_run_write_cmd aws ds create-microsoft-ad --name $name --password $password --vpc-settings $vpc_settings "$@"
}