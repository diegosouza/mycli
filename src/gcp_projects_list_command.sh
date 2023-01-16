if [ "${args[--only-name]}" ]
then
    gcloud projects list --format 'value(name)'

elif [ "${args[--only-id]}" ]
then
    gcloud projects list --format 'value(projectId)'

else
    gcloud projects list
fi

