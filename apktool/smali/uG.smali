.class abstract LuG;
.super LuB;
.source "SourceFile"


# instance fields
.field private final a:LuH;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;LuH;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lul;",
            ">;",
            "Ljava/lang/String;",
            "LuH;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 300
    invoke-direct {p0, p1}, LuB;-><init>(Ljava/util/List;)V

    .line 301
    iput-object p3, p0, LuG;->a:LuH;

    .line 302
    iput-object p2, p0, LuG;->b:Ljava/lang/String;

    .line 303
    iput-boolean p4, p0, LuG;->c:Z

    .line 304
    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, LuG;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected c(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, LuG;->a:LuH;

    iget-object v1, p0, LuG;->b:Ljava/lang/String;

    iget-boolean v2, p0, LuG;->c:Z

    invoke-interface {v0, p1, v1, v2}, LuH;->a(Landroid/view/View;Ljava/lang/String;Z)V

    .line 308
    return-void
.end method
