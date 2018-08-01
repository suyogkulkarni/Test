
pr() {
  hub pull-request -h "$1" -b "$2" -a "suyogkulkarni"
}

pr "feature" <<MSG
This is a pull request title for my-branch1

This is a description of my pull request. Markdown body goes here.
MSG

