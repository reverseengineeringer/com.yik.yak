.class final enum LsD;
.super LsC;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LsC;-><init>(Ljava/lang/String;ILsB;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "*unknown_type*"

    return-object v0
.end method
