.class Lkw;
.super Lmz;


# instance fields
.field final synthetic a:Lkt;

.field final synthetic b:Lkv;


# direct methods
.method constructor <init>(Lkv;Lkt;)V
    .locals 0

    iput-object p1, p0, Lkw;->b:Lkv;

    iput-object p2, p0, Lkw;->a:Lkt;

    invoke-direct {p0}, Lmz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lld;)V
    .locals 1

    new-instance v0, Lku;

    invoke-direct {v0, p1}, Lku;-><init>(Lld;)V

    return-void
.end method
