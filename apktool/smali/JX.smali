.class public LJX;
.super LJQ;
.source "SourceFile"


# direct methods
.method public constructor <init>(LHK;Ljava/lang/String;Ljava/lang/String;LJI;)V
    .locals 6

    .prologue
    .line 15
    sget-object v5, LJz;->b:LJz;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LJQ;-><init>(LHK;Ljava/lang/String;Ljava/lang/String;LJI;LJz;)V

    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic a(LJT;)Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1}, LJQ;->a(LJT;)Z

    move-result v0

    return v0
.end method
