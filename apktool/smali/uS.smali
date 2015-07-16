.class abstract LuS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lux;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Luz;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Luw;


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Luz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p1, p0, LuS;->a:Ljava/util/List;

    .line 602
    new-instance v0, Luw;

    invoke-direct {v0}, Luw;-><init>()V

    iput-object v0, p0, LuS;->b:Luw;

    .line 603
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Luz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 606
    iget-object v0, p0, LuS;->a:Ljava/util/List;

    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, LuS;->b:Luw;

    iget-object v1, p0, LuS;->a:Ljava/util/List;

    invoke-virtual {v0, p1, v1, p0}, Luw;->a(Landroid/view/View;Ljava/util/List;Lux;)V

    .line 592
    return-void
.end method

.method protected c()Luw;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, LuS;->b:Luw;

    return-object v0
.end method
