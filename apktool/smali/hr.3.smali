.class Lhr;
.super Ljava/lang/Object;

# interfaces
.implements Lhv;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lho;


# direct methods
.method constructor <init>(Lho;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lhr;->b:Lho;

    iput-object p2, p0, Lhr;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lhn;)V
    .locals 2

    iget-object v0, p0, Lhr;->b:Lho;

    invoke-static {v0}, Lho;->b(Lho;)Lhn;

    move-result-object v0

    iget-object v1, p0, Lhr;->a:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lhn;->a(Landroid/os/Bundle;)V

    return-void
.end method
