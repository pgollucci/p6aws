######################################################################
#<
#
# Function:
#      = p6_aws_eks_updates_list(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_eks_updates_list() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws eks list-updates --name $name "$@"
}