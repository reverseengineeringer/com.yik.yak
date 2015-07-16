.class Lhu;
.super Ljava/lang/Object;

# interfaces
.implements Lhv;


# instance fields
.field final synthetic a:Lho;


# direct methods
.method constructor <init>(Lho;)V
    .locals 0

    iput-object p1, p0, Lhu;->a:Lho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public a(Lhn;)V
    .locals 1

    iget-object v0, p0, Lhu;->a:Lho;

    invoke-static {v0}, Lho;->b(Lho;)Lhn;

    move-result-object v0

    invoke-interface {v0}, Lhn;->a()V

    return-void
.end method
