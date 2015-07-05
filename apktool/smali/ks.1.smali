.class Lks;
.super LlY;


# instance fields
.field final synthetic a:Lkv;

.field final synthetic b:Lkr;


# direct methods
.method constructor <init>(Lkr;Lkv;)V
    .locals 0

    iput-object p1, p0, Lks;->b:Lkr;

    iput-object p2, p0, Lks;->a:Lkv;

    invoke-direct {p0}, LlY;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LkL;)V
    .locals 1

    new-instance v0, Lkl;

    invoke-direct {v0, p1}, Lkl;-><init>(LkL;)V

    return-void
.end method
