######################################################################
#<
#
# Function:
#      = p6_aws_eks_kubeconfig_update(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_eks_kubeconfig_update() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws eks update-kubeconfig --name $name "$@"
}