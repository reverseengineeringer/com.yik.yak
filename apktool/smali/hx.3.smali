.class Lhx;
.super Ljava/lang/Object;

# interfaces
.implements Lhy;


# instance fields
.field final synthetic a:Lhr;


# direct methods
.method constructor <init>(Lhr;)V
    .locals 0

    iput-object p1, p0, Lhx;->a:Lhr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public a(Lhq;)V
    .locals 1

    iget-object v0, p0, Lhx;->a:Lhr;

    invoke-static {v0}, Lhr;->b(Lhr;)Lhq;

    move-result-object v0

    invoke-interface {v0}, Lhq;->a()V

    return-void
.end method
