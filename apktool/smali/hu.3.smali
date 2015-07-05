.class Lhu;
.super Ljava/lang/Object;

# interfaces
.implements Lhy;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lhr;


# direct methods
.method constructor <init>(Lhr;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lhu;->b:Lhr;

    iput-object p2, p0, Lhu;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lhq;)V
    .locals 2

    iget-object v0, p0, Lhu;->b:Lhr;

    invoke-static {v0}, Lhr;->b(Lhr;)Lhq;

    move-result-object v0

    iget-object v1, p0, Lhu;->a:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lhq;->a(Landroid/os/Bundle;)V

    return-void
.end method
