.class abstract LuZ;
.super LuS;
.source "SourceFile"


# instance fields
.field private final a:Lve;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lve;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Luz;",
            ">;",
            "Ljava/lang/String;",
            "Lve;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 568
    invoke-direct {p0, p1}, LuS;-><init>(Ljava/util/List;)V

    .line 569
    iput-object p3, p0, LuZ;->a:Lve;

    .line 570
    iput-object p2, p0, LuZ;->b:Ljava/lang/String;

    .line 571
    iput-boolean p4, p0, LuZ;->c:Z

    .line 572
    return-void
.end method


# virtual methods
.method protected c(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 575
    iget-object v0, p0, LuZ;->a:Lve;

    iget-object v1, p0, LuZ;->b:Ljava/lang/String;

    iget-boolean v2, p0, LuZ;->c:Z

    invoke-interface {v0, p1, v1, v2}, Lve;->a(Landroid/view/View;Ljava/lang/String;Z)V

    .line 576
    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, LuZ;->b:Ljava/lang/String;

    return-object v0
.end method
