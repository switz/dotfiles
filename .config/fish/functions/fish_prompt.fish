function fish_prompt --description 'Write out the prompt'
  if not set -q __fish_prompt_normal
  set -g __fish_prompt_normal (set_color normal)
  end

  if not set -q __pwd
    set __pwd (basename $PWD)
    if [ $__pwd = "$USER" ]
      set __pwd "~"
    end
  end

  if not set -q __git_branch
    set __git_branch ""(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')""
  end

  if not set -q __git_output
    set __git_status (git status 2>&1 | tee)

    set __git_info ""
    if [ (echo $__git_status | grep -c "renamed") -ne 0 ]
      set __git_info ">$__git_info"
    end
    if [ (echo $__git_status | grep -c "ahead") -ne 0 ]
      set __git_info "*$__git_info"
    end
    if [ (echo $__git_status | grep -c "new file") -ne 0 ]
      set __git_info "+$__git_info"
    end
    if [ (echo $__git_status | grep -c "Untracked") -ne 0 ]
      set __git_info "?$__git_info"
    end
    if [ (echo $__git_status | grep -c "deleted") -ne 0 ]
      set __git_info "x$__git_info"
    end
    if [ (echo $__git_status | grep -c "dirty") -ne 0 ]
      set __git_info "!$__git_info"
    end

    if [ $__git_branch ]
      if [ $__git_info ]
        set __git_output "($__git_branch $__git_info)"
      else
        set __git_output "($__git_branch)"
      end
    end
  end

  printf '%s%s %s$ ' "$__git_output" "$__pwd" $USER
end
