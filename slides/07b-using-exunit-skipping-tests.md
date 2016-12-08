## Using ExUnit: Skipping Tests (cont.)

We can run all the tests with `mix test`, but we can also include only certain ones with the `--only` flag.

```
$ mix test --only passthrough
Including tags: [:passthrough]
Excluding tags: [:test]

.

Finished in 0.02 seconds
2 tests, 0 failures, 1 skipped

Randomized with seed 968362
```

You can also use `--exclude` to run everything *but* a certain thing.