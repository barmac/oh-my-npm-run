#compdef

script_dir=${0:A:h}

function autocomplete() {
    compls=$(node "$script_dir/find-commands.js")

    completions=(${=compls})
    compadd -- $completions
}

compdef autocomplete npm run
