p6_aws_eks_run() {
        local name="$1"
        shift 1

    cond_log_and_run aws eks update-kubeconfig --name $name --dry-run "$@"
}

p6_aws_eks_verbose() {
        local name="$1"
        shift 1

    cond_log_and_run aws eks update-kubeconfig --name $name --verbose "$@"
}

