#!/usr/bin/env sh
# Generate Python-like code syntax patterns
# Count: 4126
# Examples:
# - def calculate(x: int) -> None:
# - class UserData(BaseModel):
# - if counter == 10:
# - while index < 5:
# - for item in items:

# Define components
TYPES="str|int|bool|list|dict|None"
VAR_NAMES="x|y|i|j|item|index|value|data|count"
FUNC_NAMES="get|set|add|remove|update|calculate|process|validate"
CLASS_NAMES="User|Data|Model|Base|Config|Handler|Service"
OPERATORS="==|!=|>|<|>=|<="
VALUES="True|False|None|[0-9]"

# Define separate patterns
FUNC_PATTERN="def ($FUNC_NAMES)\(($VAR_NAMES): ($TYPES)\) -> ($TYPES):"
CLASS_PATTERN="class ($CLASS_NAMES)\(($CLASS_NAMES)\):"
IF_PATTERN="if ($VAR_NAMES) ($OPERATORS) ($VALUES):"
WHILE_PATTERN="while ($VAR_NAMES) ($OPERATORS) ($VALUES):"
FOR_PATTERN="for ($VAR_NAMES) in ($VAR_NAMES):"

exrex $* \
    "($FUNC_PATTERN|$CLASS_PATTERN|$IF_PATTERN|$WHILE_PATTERN|$FOR_PATTERN)"