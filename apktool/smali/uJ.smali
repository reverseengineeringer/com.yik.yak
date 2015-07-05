.class public LuJ;
.super LuG;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;LuH;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lul;",
            ">;",
            "Ljava/lang/String;",
            "LuH;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 272
    invoke-direct {p0, p1, p2, p3, v0}, LuG;-><init>(Ljava/util/List;Ljava/lang/String;LuH;Z)V

    .line 273
    iput-boolean v0, p0, LuJ;->a:Z

    .line 274
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 283
    if-eqz p1, :cond_0

    iget-boolean v0, p0, LuJ;->a:Z

    if-nez v0, :cond_0

    .line 284
    invoke-virtual {p0, p1}, LuJ;->c(Landroid/view/View;)V

    .line 287
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, LuJ;->a:Z

    .line 288
    return-void

    .line 287
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 270
    invoke-super {p0, p1}, LuG;->b(Landroid/view/View;)V

    return-void
.end method
