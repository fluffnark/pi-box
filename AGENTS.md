# Project instructions

Read README.md, 00_START_HERE/README_START_HERE.md and 07_AGENT_TASKS/COPY_PASTE_SOMA_PROMPT.md before design work.

- No printed parts. Historical CAD is superseded and not fit-validated.
- Preserve fragile glass and FPC bonds; never route cable through the closure gasket.
- Confirm missing lid geometry before fabrication or drilling.
- Use the current actionable BOM and email-verified inventory; archived buy lists may be stale.
- #4524, #4230 and #5019 are purchased; delivery is unverified. Generic foam tape suitability is unverified.
- Both #6418 and #4224 were purchased; identify the installed controller before finalizing layout.
- Keep raw purchase emails, addresses, phone numbers, payment information and credentials out of the repository.

## SOMA model

`model.py` is the entry point; register geometry with `soma.add_part`. Units are millimetres, Z up. Use `role="reference"` for purchased components and unverified envelopes. Read NOTES.md. Build after changes using SOMA's bundled Python: `python -m soma build --project .` inside the SOMA terminal. Generated viewer caches are ignored; output/model.step is the generated assembly.
