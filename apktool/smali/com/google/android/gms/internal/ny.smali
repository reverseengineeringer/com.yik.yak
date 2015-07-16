.class public final Lcom/google/android/gms/internal/ny;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Ljy;

.field public static final a:J


# instance fields
.field public final b:I

.field private final c:Lcom/google/android/gms/internal/nu;

.field private final d:J

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljy;

    invoke-direct {v0}, Ljy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ny;->CREATOR:Ljy;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/ny;->a:J

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/nu;JI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ny;->b:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ny;->c:Lcom/google/android/gms/internal/nu;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ny;->d:J

    iput p5, p0, Lcom/google/android/gms/internal/ny;->e:I

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/internal/nu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ny;->c:Lcom/google/android/gms/internal/nu;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ny;->d:J

    return-wide v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ny;->e:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/ny;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ny;

    iget-object v2, p0, Lcom/google/android/gms/internal/ny;->c:Lcom/google/android/gms/internal/nu;

    iget-object v3, p1, Lcom/google/android/gms/internal/ny;->c:Lcom/google/android/gms/internal/nu;

    invoke-static {v2, v3}, Lix;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/internal/ny;->d:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ny;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/internal/ny;->e:I

    iget v3, p1, Lcom/google/android/gms/internal/ny;->e:I

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/ny;->c:Lcom/google/android/gms/internal/nu;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ny;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/ny;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lix;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lix;->a(Ljava/lang/Object;)Liz;

    move-result-object v0

    const-string v1, "filter"

    iget-object v2, p0, Lcom/google/android/gms/internal/ny;->c:Lcom/google/android/gms/internal/nu;

    invoke-virtual {v0, v1, v2}, Liz;->a(Ljava/lang/String;Ljava/lang/Object;)Liz;

    move-result-object v0

    const-string v1, "interval"

    iget-wide v2, p0, Lcom/google/android/gms/internal/ny;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Liz;->a(Ljava/lang/String;Ljava/lang/Object;)Liz;

    move-result-object v0

    const-string v1, "priority"

    iget v2, p0, Lcom/google/android/gms/internal/ny;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Liz;->a(Ljava/lang/String;Ljava/lang/Object;)Liz;

    move-result-object v0

    invoke-virtual {v0}, Liz;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ljy;->a(Lcom/google/android/gms/internal/ny;Landroid/os/Parcel;I)V

    return-void
.end method
