######################################################################
#<
#
# Function:
#      = p6_aws_managedblockchain_network_create(name, framework, framework_version, voting_policy, member_configuration)
#
# Arg(s):
#    name - 
#    framework - 
#    framework_version - 
#    voting_policy - 
#    member_configuration - 
#
#
#>
######################################################################
p6_aws_managedblockchain_network_create() {
    local name="$1"
    local framework="$2"
    local framework_version="$3"
    local voting_policy="$4"
    local member_configuration="$5"
    shift 5

    p6_run_write_cmd aws managedblockchain create-network --name $name --framework $framework --framework-version $framework_version --voting-policy $voting_policy --member-configuration $member_configuration "$@"
}