.class Lhq;
.super Ljava/lang/Object;

# interfaces
.implements Lhv;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lho;


# direct methods
.method constructor <init>(Lho;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lhq;->d:Lho;

    iput-object p2, p0, Lhq;->a:Landroid/app/Activity;

    iput-object p3, p0, Lhq;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lhq;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lhn;)V
    .locals 4

    iget-object v0, p0, Lhq;->d:Lho;

    invoke-static {v0}, Lho;->b(Lho;)Lhn;

    move-result-object v0

    iget-object v1, p0, Lhq;->a:Landroid/app/Activity;

    iget-object v2, p0, Lhq;->b:Landroid/os/Bundle;

    iget-object v3, p0, Lhq;->c:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lhn;->a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
