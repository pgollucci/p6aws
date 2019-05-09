p6_aws_ecs_tasks_describe() {
    local tasks="$1"
    shift 1

    p6_run_read_cmd aws ecs describe-tasks --tasks $tasks "$@"
}
