.class Lht;
.super Ljava/lang/Object;

# interfaces
.implements Lhy;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lhr;


# direct methods
.method constructor <init>(Lhr;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lht;->d:Lhr;

    iput-object p2, p0, Lht;->a:Landroid/app/Activity;

    iput-object p3, p0, Lht;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lht;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lhq;)V
    .locals 4

    iget-object v0, p0, Lht;->d:Lhr;

    invoke-static {v0}, Lhr;->b(Lhr;)Lhq;

    move-result-object v0

    iget-object v1, p0, Lht;->a:Landroid/app/Activity;

    iget-object v2, p0, Lht;->b:Landroid/os/Bundle;

    iget-object v3, p0, Lht;->c:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lhq;->a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
