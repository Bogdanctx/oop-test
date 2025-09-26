BRANCHES=$(git branch -r | grep -v 'HEAD' | grep -v 'main' | sed -e 's#origin/##')

echo "Branches to rebase:"
while read -r branch; do
    echo " - $branch"
done <<< "$BRANCHES"

while read -r branch; do
    echo "Rebasing branch: $branch"
done <<< "$BRANCHES"