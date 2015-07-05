.class public LJp;
.super LJi;
.source "SourceFile"


# direct methods
.method public constructor <init>(LHc;Ljava/lang/String;Ljava/lang/String;LJa;)V
    .locals 6

    .prologue
    .line 15
    sget-object v5, LIR;->b:LIR;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LJi;-><init>(LHc;Ljava/lang/String;Ljava/lang/String;LJa;LIR;)V

    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic a(LJl;)Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1}, LJi;->a(LJl;)Z

    move-result v0

    return v0
.end method
