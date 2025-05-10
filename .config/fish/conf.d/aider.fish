# aider
function aider
    set CONFIG_DIR "$HOME/.config/aider"
    if test -e .aider.conf.yml
        set -x AIDER_CONF ".aider.conf.yml"
    else
        set -x AIDER_CONF "$CONFIG_DIR/.aider.conf.yml"
    end

    if test -e ".aider.model.metadata.json"
        set -x AIDER_MODEL_METADATA ".aider.model.metadata.json"
    else
        set -x AIDER_MODEL_METADATA "$CONFIG_DIR/.aider.model.metadata.json"
    end

    command aider --config $AIDER_CONF --model-metadata-file $AIDER_MODEL_METADATA --no-show-model-warnings $argv
end

alias aiderge "command aider --model gemini-exp"
