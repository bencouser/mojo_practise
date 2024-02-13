# Variable Scopes
def lexical_scopes():
    let num = 10
    var dig = 1
    if num == 10:
        print("num:", num)  # Reads the outer-scope "num"
        let num = 20        # Creates new inner-scope "num"
        print("num:", num)  # Reads the inner-scope "num"
        dig = 2             # Edits the outer-scope "dig"
    print("num:", num)      # Reads the outer-scope "num"
    print("dig:", dig)      # Reads the outer-scope "dig"

def main():
    lexical_scopes()
