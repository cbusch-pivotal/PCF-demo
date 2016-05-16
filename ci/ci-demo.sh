# connecting to concourse and deploying a pipeline
fly -t lite login -c http://192.168.100.4:8080/
fly -t lite set-pipeline -p pcfdemo -c ci/pipeline.yml -l ~/.concourse/ci-props.yml
fly -t lite unpause-pipeline -p pcfdemo

# running local tasks
fly -t lite execute -c ci/tasks/unit.yml -i pcfdemo=.
